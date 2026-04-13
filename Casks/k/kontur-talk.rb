cask "kontur-talk" do
  version "3.5.0"
  sha256 "1604ace26fce0417caaec9d5dee87f45e905b10c42ea46909e2b411db50a7714"

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
