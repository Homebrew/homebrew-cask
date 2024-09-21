cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.30.0"
  sha256 arm:   "3f284c2db3535b1dab50ebf025c39e238987d1d772973e390851be5d5d602b24",
         intel: "97229b0a5564eb8e9ccb001e45c641785d9d6f0bef5b5fdf8936d264fbd880cf"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
