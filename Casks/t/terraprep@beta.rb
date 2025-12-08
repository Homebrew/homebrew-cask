cask "terraprep@beta" do
  arch arm: "darwin_arm64", intel: "darwin_amd64"

  version "beta_0.8.0"
  sha256 arm:   "126defedf3a7b52402580d29240fd904cbeaf661fc59243c633d95a2bc151be4",
         intel: "a630b3d9ea0fbe89a9fc6105eb836da2cf950e251635266c8322b39240be6dea"

  url "https://s3.eu-west-1.wasabisys.com/noss/terraprep/#{version}/terraprep_#{version}_#{arch}.zip",
      verified: "s3.eu-west-1.wasabisys.com/noss/terraprep/"
  name "Terraprep Beta"
  desc "OpenTofu & Terraform remote backend creation client"
  homepage "https://www.terraprep.xyz/"

  livecheck do
    skip "Beta channel is manually managed"
  end

  depends_on macos: ">= :sonoma"

  # The zip contains a single file:
  #   terraprep_beta_0.8.0_darwin_arm64 or terraprep_beta_0.8.0_darwin_amd64
  # Install it as `terraprep` in /opt/homebrew/bin (or /usr/local/bin on Intel)
  binary "terraprep_#{version}_#{arch}", target: "terraprep"

  zap trash: "~/.terraprep"
end
