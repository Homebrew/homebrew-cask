cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.83.2,01M1F9E6PMR6KY741V08JFYXPM"
    sha256 "5decfaeb55bf710454d90527bf5cb3a9bdf25678af81a7205eb6268dc8999ca9"
  end
  on_intel do
    version "0.83.2,01M1F9EGB9CGFN9W3ZNX5RCAD9"
    sha256 "ca8ccf7702f7ce8fff5c3ee80f094adfd13263f179812cbf8da555b4d2b1266d"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}"
  name "Conductor"
  desc "Claude code parallelisation"
  homepage "https://conductor.build/"

  livecheck do
    url "https://cdn.crabnebula.app/update/melty/conductor/darwin-#{arch}/latest"
    regex(%r{/asset/([^?/]+)}i)
    strategy :json do |json, regex|
      asset_id = json["url"]&.[](regex, 1)
      version = json["version"]
      next if asset_id.blank? || version.blank?

      "#{version},#{asset_id}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
