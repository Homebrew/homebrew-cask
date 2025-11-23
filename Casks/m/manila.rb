cask "manila" do
  version "1.0.1"
  sha256 "269e11c4f069293f3cd8b93f96f127ef3b62014983f7685efa9e50200796e43c"

  url "https://github.com/neilsardesai/Manila/releases/download/v#{version}/Manila.zip"
  name "Manila"
  desc "Finder extension for changing folder colours"
  homepage "https://github.com/neilsardesai/Manila"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Manila.app"

  zap trash: [
    "~/Library/Application Scripts/com.NeilSardesai.Manila*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.neilsardesai.manila.sfl*",
    "~/Library/Containers/com.NeilSardesai.Manila*",
  ]
end
