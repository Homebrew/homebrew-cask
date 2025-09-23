cask "kontur-talk" do
  version "3.2.0"
  sha256 "f3cbea475b6072d5503468e91bb64f890936469d4f3dfefc797c743997d660d2"

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
