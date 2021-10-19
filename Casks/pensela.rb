cask "pensela" do
  version "1.2.3"
  sha256 "5ded6cba1dfa551e8e963b0d0e9d6849fe37e41c4bdfdd47ceb71ab79ee2d5ee"

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
