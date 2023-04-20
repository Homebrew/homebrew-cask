cask "pronterface" do
  version "2.0.0rc8"
  sha256 "45f2a288939b3cb2594c821a614fa21af37b17e2b46310d7b72f3be45e15f5af"

  url "https://github.com/kliment/Printrun/releases/download/printrun-#{version}/pronterface-macos-app-#{version}.zip"
  name "Printrun"
  desc "Control your 3D printer from your PC"
  homepage "https://github.com/kliment/Printrun"

  livecheck do
    url "https://github.com/kliment/Printrun/releases/latest"
    regex(%r{href=.*?/pronterface-macos-app-(\d+(?:\.\d+)*(?:rc\d*)?)\.zip}i)
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

  app "pronterface.app"
end
