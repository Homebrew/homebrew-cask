cask "kontur-talk" do
  version "3.5.1"
  sha256 "b331a71698cfbc2bfdcfe58c9cd6cbc5043084b8cc56ffc2da1ddcbf78350988"

  url "https://st.ktalk.host/ktalk-app/mac/ktalk.#{version}-mac.dmg",
      verified: "st.ktalk.host/"
  name "Kontur Talk"
  name "Толк"
  desc "Video conferencing service"
  homepage "https://kontur.ru/talk"

  livecheck do
    url "https://st.ktalk.host/ktalk-app/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Толк.app"

  zap trash: [
    "~/Library/Application Support/ktalk",
    "~/Library/Logs/ktalk",
    "~/Library/Preferences/kontur.talk.plist",
  ]
end
