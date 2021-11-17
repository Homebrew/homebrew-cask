cask "pensela" do
  version "1.2.4"
  sha256 "1bba20814765d1ffb07aa1dc62e49d15c53d68efe3c11347ef0c4815295aa610"

  url "https://github.com/weiameili/Pensela/releases/download/v#{version}/Pensela-#{version}.dmg"
  name "Pensela"
  desc "Screen Annotation Tool"
  homepage "https://github.com/weiameili/Pensela"

  app "Pensela.app"

  zap trash: [
    "~/Library/Application Support/pensela",
    "~/Library/Preferences/com.wali.Pensela.plist",
    "~/Library/Saved Application State/com.wali.Pensela.savedState",
  ]
end
