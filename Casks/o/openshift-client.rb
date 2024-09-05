cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.11"
  sha256 arm:   "2ca6cca8ccb568a1569f56e06c4f9a532570df044a9160785d8d4a0a75e95613",
         intel: "cd010fa688a82584f77777086190c64cb9934a1254e29acca98272df8c072cd4"

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
