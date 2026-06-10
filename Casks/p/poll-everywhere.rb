cask "poll-everywhere" do
  version "4.0.1"
  sha256 "cbe60b569d5f6c05ca71092fd7d6d19c6f99bc09d72ddf428e1441de582fe065"

  url "https://polleverywhere-app.s3.amazonaws.com/mac-stable/#{version}/pollev.dmg",
      verified: "polleverywhere-app.s3.amazonaws.com/"
  name "Poll Everywhere"
  desc "Live audience response and interactive polling client"
  homepage "https://www.polleverywhere.com/"

  livecheck do
    url "https://polleverywhere-app.s3.amazonaws.com/?list-type=2&prefix=mac-stable/"
    regex(%r{mac-stable/(\d+(?:\.\d+)+)/pollev\.dmg}i)
    strategy :page_match
  end

  depends_on macos: :sonoma

  app "Poll Everywhere.app"

  zap trash: [
    "~/Library/Caches/com.polleverywhere.PollEv-Presenter",
    "~/Library/HTTPStorages/com.polleverywhere.PollEv-Presenter",
    "~/Library/Preferences/com.polleverywhere.PollEv-Presenter.plist",
    "~/Library/Saved Application State/com.polleverywhere.PollEv-Presenter.savedState",
  ]
end
