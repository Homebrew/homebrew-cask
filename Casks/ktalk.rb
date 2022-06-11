cask "ktalk" do
  version "2022.3.1"
  sha256 "d9bb5e299167025e8a3774942bd29f78b5a086f9e496a2d52ce83ebc10cf7f57"

  url "https://st.skbkontur.ru/content/talk-app/ktalk.#{version}-mac.dmg",
      verified: "st.skbkontur.ru/"
  name "Kontur Talk"
  desc "Video and audio conference of your organization"
  homepage "https://ktalk.ru/"

  livecheck do
    url "https://app.ktalk.ru/system/dist/download/mac"
    strategy :header_match
  end

  app "Толк.app"

  uninstall quit:      "kontur.talk",
            launchctl: "kontur.talk"

  zap trash: [
    "~/Library/Application Support/ktalk",
    "~/Library/LaunchAgents/Толк.plist",
    "~/Library/Logs/ktalk",
    "~/Library/Preferences/kontur.talk.plist",
    "~/Library/Saved Application State/kontur.talk.savedState",
  ]
end
