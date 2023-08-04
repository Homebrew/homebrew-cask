cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.8"
  sha256 arm:   "f4d50a90d2f965e8bd94658e9bb85917c8a63782975cfe8ee7a7cd312aee1265",
         intel: "6d2b1c337f4524bede2b35b1cf217cc2fb6753298fd2191cc90114290455ee23"

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
