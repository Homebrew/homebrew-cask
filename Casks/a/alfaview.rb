cask "alfaview" do
  version "9.30.5"
  sha256 "f7d0487fe7242e103ee0773da559a4c44cc37384baeb2bcde21eeb2e0c8a5627"

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

  depends_on macos: :monterey

  pkg "alfaview-mac-production-#{version}.pkg"

  uninstall quit:    "com.alfaview.desktop",
            pkgutil: "com.alfaview.desktop"

  zap trash: "~/Library/Application Support/alfaview"
end
