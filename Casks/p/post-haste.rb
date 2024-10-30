cask "post-haste" do
  version "2.8.3,2832"
  sha256 "a3a2b9f73f99a880b3155fa24e3b0ce6a2fee32d822dcfb2e80a135c29f2b64e"

  url "https://download.digitalrebellion.com/posthaste/Post_Haste_for_Mac_#{version.csv.second}.dmg"
  name "Post Haste"
  desc "Digital media project management tool"
  homepage "https://www.digitalrebellion.com/posthaste/"

  # Upstream filenames use a version without dots, so we check the support page
  # that displays version history.
  livecheck do
    url "https://www.digitalrebellion.com/support/posthaste"
    regex(%r{
      href=.*?/download/posthaste\?version=(\d+(?:\.\d+)*)[^>]*?>
      \s*Post\s+Haste\s+for\s+Mac\s+v?(\d+(?:\.\d+)+)
    }imx)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "Post Haste.app"

  zap trash: [
        "~/Library/Application Support/Digital Rebellion/Post Haste/",
        "~/Library/Preferences/com.digitalrebellion.PostHaste.plist",
      ],
      rmdir: "~/Library/Application Support/Digital Rebellion"
end
