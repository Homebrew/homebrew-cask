cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.2"
  sha256 arm:   "14894a79a7243a6991a1778b8c65743d47872e0fd0fe7946be7d009023e171ec",
         intel: "612b269ad7718de4124a4d8daf48232e4dcd5cb8096651905a91f617eaa017cd"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
