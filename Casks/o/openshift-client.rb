cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.8"
  sha256 arm:   "da24f03a41e9d305f28490633a401ccf3e961d2873bdcb7c07580541d304a151",
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
