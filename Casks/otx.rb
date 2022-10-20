cask "otx" do
  version "1.7,b566"
  sha256 "116a9441cfed31c28e0f9b3aa26b82f2a7186d3c8ec4afd2173c2ad460e51ab8"

  url "https://github.com/x43x61x69/otx/releases/download/v#{version.csv.first}/otx_#{version.csv.second}.zip"
  name "otx"
  desc "Mach-O disassembler"
  homepage "https://github.com/x43x61x69/otx"

  livecheck do
    url "https://github.com/x43x61x69/otx/releases/latest"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/otx[._-](\h+)\.zip}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  app "otx.app"
  binary "otx"
end
