cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.2"
  sha256 arm:   "f71a6c87cda6a7c83da15678a16166ac25655296de69672ab0b3fb3db673ae89",
         intel: "868e5c5fdc4e8d30b8129697c4cb9c2ca8e549cec132bf1cd96c0b30bb3a2c2f"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
