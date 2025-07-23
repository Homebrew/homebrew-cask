cask "timescribe" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "a0077db80e9d1ca27922ac8c7ff3f48172270a05933ba623f783ab7b3f2858bd",
         intel: "44fa44c876629179840f066218029a22658c7514fb396e720a14baed488ce5b9"

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
