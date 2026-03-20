cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.41.0,01KM43CF4CBRBWKAHVK4GMQV6H"
    sha256 "e13cfb8c7551456f9afd35be5876724a90ed57ac55f5fd2845683bc393ec75cc"
  end
  on_intel do
    version "0.41.0,01KM436MCBAZ4F2B19B17HW8JD"
    sha256 "8ddbb74653bf4cf82570aa79aaf5338fb5fb75184af9709075e989870be2844e"
  end

  url "https://cdn.crabnebula.app/asset/#{version.csv.second}",
      verified: "cdn.crabnebula.app/asset/"
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

  app "Conductor.app"

  zap trash: [
    "~/Library/Application Support/com.conductor.app",
    "~/Library/Caches/com.conductor.app",
    "~/Library/WebKit/com.conductor.app",
  ]
end
