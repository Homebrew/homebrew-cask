cask "blender" do
  module Utils
    def self.sha256_parser(version)
      require "open-uri"
      sha256url = "https://download.blender.org/release/Blender#{version.major_minor.delete("a-z")}/blender-#{version}.sha256"

      f = URI(sha256url).open
      f.each_line do |line|
        line.match(/blender-#{version}-macOS.dmg/) { |m| return m.string.split(" ")[0] }
      end
    end
  end

  version "2.83.5"
  sha256 Utils.sha256_parser(version)

  url "https://download.blender.org/release/Blender#{version.major_minor.delete("a-z")}/blender-#{version}-macOS.dmg"
  appcast "https://download.blender.org/release/",
          must_contain: version.major_minor.delete("a-z")
  name "Blender"
  homepage "https://www.blender.org/"

  app "Blender.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: "blender"

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod "u+w", Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end
end
