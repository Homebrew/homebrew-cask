cask "alfaview" do
  version "9.22.2"
  sha256 "21c55f1a07eb7ecc93a5f9812641c95b4526f43aa9458bc751646a04e4e26f7c"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.pkg"
  name "Alfaview"
  desc "Audio video conferencing"
  homepage "https://alfaview.com/"

  livecheck do
    url "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
    strategy :json do |json|
      json["versions"]&.first&.[]("version")
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "alfaview-mac-production-#{version}.pkg"

  uninstall quit:    "com.alfaview.desktop",
            pkgutil: "com.alfaview.desktop"

  zap trash: "~/Library/Application Support/alfaview"
end
