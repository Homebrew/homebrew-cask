cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.4"
  sha256 arm:   "ebb13f651c7161fa0e29044ad2c4efb3d8665ba45e85635adab22c8bb68de121",
         intel: "a9b23c38cf8261ae71cb87677b397e94d67c2c9b87671af699e1be511ca9e41c"

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
