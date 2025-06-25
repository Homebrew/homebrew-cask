cask "eid-viewer" do
  version "5.1.22"
  sha256 "925bf141569f0f27c28b54f25f2cfe61c5733a5bc5be4d1a2e827cdf3da21a80"

  url "https://eid.belgium.be/sites/default/files/software/eID%20Viewer-#{version}.dmg"
  name "Belgian EID Viewer"
  desc "Belgian ID card reader"
  homepage "https://eid.belgium.be/"

  livecheck do
    url "https://eid.belgium.be/en"
    regex(/href=.*?eID(?:(?:%20|\s)+|[._-])?Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      download_id = page[%r{element_os-mac-os.*/en/download/(\d+)/license.*?download\s+eID\s+viewer}im, 1]
      next if download_id.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://eid.belgium.be/en/download/#{download_id}/license")
      version_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "eID Viewer.app"
  # No zap stanza required
end
