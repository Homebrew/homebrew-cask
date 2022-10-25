cask "86box" do
  version "3.7.1,4032"
  sha256 "174b7b11c40557980ca13af8d6a35dd976e6418842416ee78598fcf84210d36e"

  url "https://github.com/86Box/86Box/releases/download/v#{version.csv.first}/86Box-macOS-x86_64+arm64-b#{version.csv.second}.zip",
      verified: "github.com/86Box/86Box/"
  name "86Box"
  desc "Emulator of x86-based machines based on PCem"
  homepage "https://86box.net/"

  livecheck do
    url "https://github.com/86Box/86Box/releases/latest"
    regex(%r{href=.*?/download/v?(\d+(?:\.\d+)*)/86Box[._-]macOS.*?[._-]b(\d+).zip}i)
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

  depends_on macos: ">= :high_sierra"

  app "86Box.app", target: "86Box/86Box.app"

  roms_dir = "#{Dir.home}/Library/Application Support/net.86box.86Box/roms"

  preflight do
    FileUtils.mkdir_p roms_dir
  end

  zap trash: [
    "/Applications/86Box",
    "~/Library/Application Support/net.86box.86Box",
    "~/Library/Saved Application State/net.86Box.86Box.savedState",
  ]

  caveats <<~EOS
    Requires installing ROM files from https://github.com/86Box/roms/releases/latest into:

      #{roms_dir}
  EOS
end
