cask "ktalk" do
  version "2022.2.3"
  sha256 "18d13adff23d2019ef89af55e2419a7a3fd7e2d430f505495bd3e9c4e06020f5"

  url "https://st.skbkontur.ru/content/talk-app/ktalk.#{version}-mac.dmg",
      verified: "st.skbkontur.ru/"
  name "Kontur Talk"
  desc "Video and audio conference of your organization"
  homepage "https://ktalk.ru/"

  livecheck do
    url "https://app.ktalk.ru/system/dist/download/mac"
    strategy :header_match
  end

  depends_on macos: ">= :yosemite"

  app "Толк.app"

  zap trash: [
    "~/Library/Application Support/ktalk",
    "~/Library/Logs/ktalk",
  ]
end
