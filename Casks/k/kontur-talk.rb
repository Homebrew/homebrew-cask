cask "kontur-talk" do
  version "3.1.1"
  sha256 "d5b646955000f2ee91d639d6291cdc0db50e8527e41d4829d5db2c736c06d55a"

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
  depends_on macos: ">= :big_sur"

  app "Толк.app"

  zap trash: [
    "~/Library/Application Support/ktalk",
    "~/Library/Logs/ktalk",
    "~/Library/Preferences/kontur.talk.plist",
  ]
end
