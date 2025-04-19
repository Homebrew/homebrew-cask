cask "liviable" do
  version "1b5,2024.01"
  sha256 "4a61b692c5d07ca06985edee3bc8e4f1bf82aa385aa3290d3418b01be3b63453"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/liviable#{version.csv.first}.zip"
  name "Liviable"
  desc "Create and run Linux virtual machines on Apple silicon Macs"
  homepage "https://eclecticlight.co/virtualisation-on-apple-silicon/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/liviable[._-]?v?(\w+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "liviable#{version.csv.first}/Liviable.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Liviable",
    "~/Library/HTTPStorages/co.eclecticlight.Liviable",
    "~/Library/Preferences/co.eclecticlight.Liviable.plist",
    "~/Library/Saved Application State/co.eclecticlight.Liviable.savedState",
  ]
end
