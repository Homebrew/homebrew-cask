cask "stoplight-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm64"

  version "2.8.0,6878.git-fbaa089"

  if Hardware::CPU.intel?
    sha256 "273fa1f5a3784ecfa6dd515fdab7da39187b0e5c682a11f65e60aac85e4e8db2"
  else
    sha256 "fd67ca0c26c4160b74a0e4bb02353452e7f82fa23a8886ef27ee02edfe6c96e2"
  end

  url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url "https://github.com/stoplightio/studio/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]#{arch}\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Stoplight Studio.app"
end
