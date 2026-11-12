cask "conductor" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.94.2,01M78N5E73FER33DYBWBVGAD0W"
    sha256 "0a5fe2c802f8c3715a4a61869e4abb7accee03b5b201e0ef4a18bc50939eed16"
  end
  on_intel do
    version "0.94.2,01M78N5KF1PK3XXKXR1P6Y2KKZ"
    sha256 "08f37b9d58a7a9204fa2a7516f7d00e1610a719521dbf04614abae22df6f9c39"
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
      ],
      rmdir: "~/.conductor"
end
