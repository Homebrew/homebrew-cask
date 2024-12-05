cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.8"
  sha256 arm:   "d55f3d5767df62b80be823db94c98614f870a4117b8a3e422fcf96ab84c87d07",
         intel: "342e3deef8245114f988a8205dcb6f52127e739da26e25623524f19783581ce8"

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
