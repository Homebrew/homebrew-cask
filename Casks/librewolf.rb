cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "112.0.2,1,780ebd2ddc71c81a06f6e15f3e0a0e39"
    sha256 "3a34d75e83bf9aa086c7dc984f3e30f0a6d34cddb0641895a4152159a984b292"
  end
  on_intel do
    version "112.0.2,1,1d0b50d43028a243c9965f0fd500ebb8"
    sha256 "2d9958addcb6f8009c2ff9befe000c0e77f8b01dbeb70fe78cc68e9cb64f995d"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}.en-US.mac.#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/uploads/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)\.en-US\.mac\.#{arch}\.dmg[\s"]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
      end
    end
  end

  app "LibreWolf.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/librewolf.wrapper.sh"
  binary shimscript, target: "librewolf"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/LibreWolf.app/Contents/MacOS/librewolf' "$@"
    EOS
  end

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
