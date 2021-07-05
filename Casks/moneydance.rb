cask "moneydance" do
  version "2021.1,3069"
  sha256 "b45db81dd83c2d188131f25b352d0a8921baa23f6482cfaaae62e230e32373d8"

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
