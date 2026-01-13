cask "panwriter" do
  arch arm: "arm64", intel: "x64"

  version "0.8.10"
  sha256 arm:   "c7a3fbf1b4f6b96465c0afc5aa4f086c2ec1d58f012c7eee27afc616a99d830e",
         intel: "58aadbd71fd7db1f76ef0d5ac0dab227980ac4903472832784fd0050acb3fbdc"

  url "https://github.com/mb21/panwriter/releases/download/v#{version}/PanWriter-#{version}-#{arch}.dmg",
      verified: "github.com/mb21/panwriter/"
  name "PanWriter"
  desc "Markdown editor with pandoc integration and paginated preview"
  homepage "https://panwriter.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on formula: "pandoc"
  depends_on macos: ">= :monterey"

  app "PanWriter.app"

  zap trash: [
    "~/Library/Application Support/PanWriter",
    "~/Library/Preferences/com.panwriter.app.plist",
  ]
end
