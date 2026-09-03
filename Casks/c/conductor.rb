cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.84.0,01M1JKWV1Q1CT25VAB4AJPSFFC"
    sha256 "045b016e293f15ba819cc0af4739abe3ab1c1b46dee73e0c640ae925de70a6e2"
  end
  on_intel do
    version "0.84.0,01M1JKWMNP41SBHVJ8QPC0SVWP"
    sha256 "690819f9ee6241ee6e3b107abda033a0983cc225b69a8f4bfd56fd0b9e7e3a7c"
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
