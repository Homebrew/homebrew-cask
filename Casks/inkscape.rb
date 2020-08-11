cask "inkscape" do
  version "1.0.1"
  sha256 "52597712673dedf56d2c084e26d906fd376a382a792d1ac2315a9de697a66dd6"

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://inkscape.org/release",
          must_contain: version.major_minor
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  app "Inkscape.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/inkscape.wrapper.sh"
  binary shimscript, target: "inkscape"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{staged_path}/Inkscape.app/Contents/MacOS/inkscape' "$@"
    EOS
  end

  zap trash: [
    "~/.config/inkscape",
    "~/Library/Application Support/Inkscape",
    "~/Library/Application Support/org.inkscape.Inkscape",
    "~/Library/Preferences/org.inkscape.Inkscape.plist",
    "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
  ]
end
