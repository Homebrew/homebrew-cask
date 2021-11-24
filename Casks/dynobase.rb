cask "dynobase" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.7.6"

  if Hardware::CPU.intel?
    sha256 "fd4235aa70dd0adfbdfa106a4e6a36e072a242975be7b4a7cfd09d58b8063e43"
  else
    sha256 "ba904cd7f9fd9c50face990379487aefcfa941d4bc6da067516f659eaf09de34"
  end

  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
