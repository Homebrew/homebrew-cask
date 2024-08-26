cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.9"
  sha256 arm:   "12a2c8c276a147cb477c486d7b4660a3d68175aaad5e8f1420d74d64484749c0",
         intel: "d775a3165c61ea0986d75131a9dc5d644ee261805e79d55f9eadc736b8edd5bb"

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
