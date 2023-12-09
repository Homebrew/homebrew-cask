cask "moneydance" do
  version "2023.3,5064"
  sha256 :no_check

  url "https://infinitekind.com/stabledl/current/Moneydance.dmg"
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
