cask "maria" do
  version "1.2.6,1701213"
  sha256 "49fdca9fb362b96d9e51a5663edc4a7f2d2e27e3f9d14ffcaea60fdb2a155e06"

  url "https://github.com/shincurry/Maria/releases/download/v#{version.csv.first}/Maria_v#{version.csv.first}_build#{version.csv.second}.dmg"
  name "Maria"
  desc "App/widget for aria2 download tool"
  homepage "https://github.com/shincurry/Maria"

  livecheck do
    url "https://github.com/shincurry/Maria/releases/latest"
    regex(%r{href=.*?/Maria_v?(\d+(?:\.\d+)*)_build(.*?)\.dmg}i)
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

  app "Maria.app"
end
