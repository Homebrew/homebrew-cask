cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "fd7f85a43cc8983e5ac97127ec6ef41847d352c99787d76a37459fd5dbb08abc",
         intel: "f11ede1d52f746b36eac1b61861e9995874157eae9adf596bd8914c16cc57e1b"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
