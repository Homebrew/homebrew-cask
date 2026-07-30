cask "kontur-talk" do
  version "3.6.1"
  sha256 "ba8267a41c1df155d2caf58a8a43d61116e6532dc49610a291b01502becdce6e"

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
  depends_on macos: :monterey

  app "Толк.app"

  zap trash: [
    "~/Library/Application Support/ktalk",
    "~/Library/Logs/ktalk",
    "~/Library/Preferences/kontur.talk.plist",
  ]
end
