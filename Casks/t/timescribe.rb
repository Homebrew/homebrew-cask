cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "9a07c7e6b4f4cb91481e3def38890b0c9de92c4be4689891e6e7ad5344ac0537",
         intel: "ebf7ec85f03dfed54cde891ba27c0f5d42a9c2230899e45216f649a173fb4b6e"

  url "https://github.com/WINBIGFOX/TimeScribe/releases/download/v#{version}/TimeScribe-#{version}-#{arch}.zip",
      verified: "github.com/WINBIGFOX/TimeScribe/"
  name "TimeScribe"
  desc "Working time tracker"
  homepage "https://timescribe.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TimeScribe.app"

  zap trash: "~/Library/Application Support/timescribe"
end
