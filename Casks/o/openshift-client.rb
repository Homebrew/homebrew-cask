cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.18"
  sha256 arm:   "7918aa20d929c14ab2aafeab001d8f68b1dd6c572724e2e9540204575a55bbe8",
         intel: "3421fe761b7a8ba745530c21bb6b5413ed800e8b432bbd44cc3092f9bd0fdf14"

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
