cask "mixed-in-key" do
  version "11.0.1.5951,67"
  sha256 "67219c259a207c03735677aa90add65dee3cad0ac41a22cf30574bafdfbad6eb"

  url "https://builds.mixedinkey.com/download/#{version.csv.second}/release/latest?key=public"
  name "Mixed In Key"
  desc "Harmonic mixing for DJs and music producers"
  homepage "https://mixedinkey.com/get#{version.major}/"

  # The download page changes with each major version. The version can only be
  # found by checking the headers on the download url, which has a variable
  # download id. Therefore multiple steps are required to find an accurate version.
  livecheck do
    url "https://mixedinkey.com/learn-more/"
    regex(%r{/Mixed%2BIn%2BKey[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :page_match do |page, regex|
      major_version = page[/Mixed\s+in\s+Key\s+v?(\d+)["< ]/i, 1]
      next if major_version.blank?

      download_page = Homebrew::Livecheck::Strategy.page_content("https://mixedinkey.com/get#{major_version}/")
      download_id = download_page[:content].scan(%r{href=.*download/(\d+)/release})&.flatten&.first
      next if download_id.blank?

      header_url = "https://builds.mixedinkey.com/download/#{download_id}/release/latest?key=public"
      headers = Homebrew::Livecheck::Strategy.page_headers(header_url)
      version = headers.first["location"].match(regex)&.captures&.first
      next if version.blank?

      "#{version},#{download_id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Mixed In Key #{version.major}.app"

  uninstall quit: "com.mixedinkey.application"

  zap trash: [
    "~/Library/Application Support/com.mixedinkey.application",
    "~/Library/Application Support/Mixedinkey",
    "~/Library/Caches/com.mixedinkey.application",
    "~/Library/HTTPStorages/com.mixedinkey.application",
    "~/Library/Preferences/com.mixedinkey.application.plist",
    "~/Library/WebKit/com.mixedinkey.application",
  ]
end
