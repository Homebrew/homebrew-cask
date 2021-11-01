cask "moneydance" do
  version "2022,4056"
  sha256 "bfe2711707ce42809e4c92f7458059c7aa793e6c788f8febd92aafe6022b227a"

  url "https://infinitekind.com/stabledl/#{version.before_comma}_#{version.after_comma}/Moneydance.zip"
  name "Moneydance"
  desc "Personal financial management application focused on privacy"
  homepage "https://infinitekind.com/moneydance"

  livecheck do
    url "https://infinitekind.com/download-moneydance-personal-finance-software"
    strategy :page_match do |page|
      page.scan(/Moneydance\s*v?(\d+(?:\.\d+)*)\s*\((\d+)\)/i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Moneydance.app"
end
