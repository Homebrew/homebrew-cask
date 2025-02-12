cask "moneydance" do
  version "2024.3,5219"
  sha256 :no_check

  url "https://infinitekind.com/stabledl/current/Moneydance.dmg"
  name "Moneydance"
  desc "Personal financial management application focused on privacy"
  homepage "https://infinitekind.com/moneydance"

  livecheck do
    url "https://infinitekind.com/download-moneydance-personal-finance-software"
    regex(/Moneydance\s*v?(\d+(?:\.\d+)*)\s*\((\d+)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Moneydance.app"

  zap trash: [
    "~/Library/Application Scripts/com.infinitekind.MoneydanceOSX",
    "~/Library/Containers/com.infinitekind.MoneydanceOSX",
  ]
end
