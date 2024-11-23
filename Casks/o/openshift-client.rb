cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.6"
  sha256 arm:   "a47eb167e601df8a876228426325e97d664745b88a4ff0bba5e43204fe13699f",
         intel: "e84d13f6242bd1ddd909c6c698d498e3455d1f70430f13f91112dc4e2d7719ea"

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
