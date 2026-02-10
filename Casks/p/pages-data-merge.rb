cask "pages-data-merge" do
  version "2.1"
  sha256 "21458a889452ea20915bbb61b3a0522b880475b91e1080966d120a3a4341d9c9"

  url "https://iworkautomation.com/pages/data-merge-#{version.dots_to_hyphens}.zip",
      user_agent: :browser
  name "Pages Data Merge"
  desc "Mail merge for Pages"
  homepage "https://iworkautomation.com/pages/script-tags-data-merge.html"

  livecheck do
    url :homepage, user_agent: :browser
    regex(/href=.*?data[._-]merge[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Pages Data Merge.app"

  zap trash: "~/Library/Saved Application State/com.NyhthawkProductions.Pages-Data-Merge.savedState"
end
