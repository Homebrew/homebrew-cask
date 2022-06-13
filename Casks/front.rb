cask "front" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.34.13"

  if Hardware::CPU.intel?
    sha256 "6ee6b7aea0abd0e94222a6f847314a2217bebc23d0963f286fe354495ab70535"
  else
    sha256 "7702ce89d5093d56f0781c4f02dd61a0fb49af0455a4958bda0f470ad361f1a5"
  end

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
