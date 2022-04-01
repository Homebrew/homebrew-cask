cask "prince" do
  version "14.2"
  sha256 "b6ba20b26e5451118727ab595bf5a0ea9342aa5923ac29e7edfd7e84407348d8"

  url "https://www.princexml.com/download/prince-#{version}-macos.zip"
  name "Prince"
  desc "Convert HTML to PDF"
  homepage "https://www.princexml.com/"

  livecheck do
    url "https://www.princexml.com/download/"
    regex(%r{href=.*?/prince-(\d+(?:\.\d+)*)-macos\.zip}i)
  end

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/prince-#{version}-macos/prince.wrapper.sh"
  binary shimscript, target: "prince"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/prince-#{version}-macos/lib/prince/bin/prince' --prefix '#{staged_path}/prince-#{version}-macos/lib/prince' "$@"
    EOS
  end
end
