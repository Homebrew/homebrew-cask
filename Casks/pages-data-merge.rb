cask "pages-data-merge" do
  version :latest
  sha256 :no_check

  url "https://iworkautomation.com/pages/PagesDataMergeAppMojave.zip",
      user_agent: :fake
  name "Pages Data Merge"
  homepage "https://iworkautomation.com/pages/script-tags-data-merge.html"

  app "Pages Data Merge.app"
end
