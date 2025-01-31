cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.15"
  sha256 arm:   "6669225b1a525a061469ed38b37a8b24b82c142a6bf57554ae0180d0e31c9371",
         intel: "559822534dee900fabbe8177468447ea68f1dd77f1403209d330b6cf7a95e134"

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
