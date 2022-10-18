cask "mindforger" do
  version "1.54.0-20220307.225449"
  sha256 "234b50d22d126eedaefcac5f3d331d1d913b2140b3ea4869f92042f2a5216c26"

  url "https://github.com/dvorka/mindforger/releases/download/#{version.split("-").first}/mindforger-#{version}-intel.dmg",
      verified: "github.com/dvorka/mindforger/"
  name "MindForger"
  desc "Thinking notebook and Markdown IDE"
  homepage "https://www.mindforger.com/"

  livecheck do
    url "https://github.com/dvorka/mindforger/releases/latest"
    regex(/href=.*?mindforger[._-]v?(\d+(?:[.-]\d+)+)-intel\.dmg/i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  app "mindforger.app"
end
