cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.25.0"
  sha256 arm:   "df07a0b42d5faa8889ccf360dfc9877b00f25b9e4cd218fdecc427d405df9249",
         intel: "cbec83054f9d85a79eb66d7faf27f7cf46dde77fe42cc8dd2dab7dd109131139"

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
