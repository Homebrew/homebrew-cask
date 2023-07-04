cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.43.9"
  sha256 arm:   "cdaa99059199d2f3f662d02d1723ac1972a934a0759c715c1e0a77a3a629a611",
         intel: "ce875892fbe6b3ff2505320b1c80942a4194b55e7b91af5091ede27072dadab7"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
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
