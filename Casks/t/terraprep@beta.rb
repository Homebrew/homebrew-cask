cask "terraprep@beta" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "beta_0.8.0"
  sha256 arm:   "18062981dae851f9ca9b8d8348efecc8efccde689839a69c9aacb4a3418fff88",
         intel: "34560bd2c96fe7148e72f10949e9d9a2183257b2e99785cb7e377bf61b131f4a"

  url "https://s3.eu-west-1.wasabisys.com/noss/terraprep/#{version}/terraprep_#{version}_#{arch}.zip",
      verified: "s3.eu-west-1.wasabisys.com/noss/terraprep/"

  name "Terraprep Beta"
  desc "OpenTofu & Terraform remote backend creation client"
  homepage "https://www.terraprep.xyz"

  depends_on macos: ">= :sonoma"

  # The zip contains a single file:
  #   terraprep_beta_0.8.0_darwin_arm64 or terraprep_beta_0.8.0_darwin_amd64
  # Install it as `terraprep` in /opt/homebrew/bin (or /usr/local/bin on Intel)
  binary "terraprep_#{version}_#{arch}", target: "terraprep"

  livecheck do
    skip "Beta channel is manually managed"
  end

  zap trash: [
    "~/.terraprep",
  ]
end
