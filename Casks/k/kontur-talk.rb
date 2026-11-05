cask "kontur-talk" do
  version "3.8.0"
  sha256 "4df317aff7f125cb5a73e5385c564e70553a25586bc05d6ce7c856fb1e4f106e"

  url "https://st.ktalk.host/ktalk-app/mac/ktalk.#{version}-mac.dmg"
  name "Kontur Talk"
  name "Толк"
  desc "Video conferencing service"
  homepage "https://kontur.ru/talk"

  livecheck do
    url "https://st.ktalk.host/ktalk-app/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Толк.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/kontur.talk.sfl*",
    "~/Library/Application Support/ktalk",
    "~/Library/Logs/ktalk",
    "~/Library/Preferences/kontur.talk.plist",
  ]
end
