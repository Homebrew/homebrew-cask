cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "f41a556163237169becf7a1253f5bca8d085901f639c6607964029f1d08362be",
         intel: "8bbe65e7f9eb159fd9aa130a42708bd3f79c5ae6b319ade99233f2b7721fc2b3"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.marswave.colamd.sfl*",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
