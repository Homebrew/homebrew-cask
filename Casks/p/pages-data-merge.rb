cask "pages-data-merge" do
  version "1.8"
  sha256 :no_check

  url "https://iworkautomation.com/pages/PagesDataMergeAppMojave.zip",
      user_agent: :fake
  name "Pages Data Merge"
  homepage "https://iworkautomation.com/pages/script-tags-data-merge.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Pages Data Merge.app"
end
