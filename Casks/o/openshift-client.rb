cask "openshift-client" do
  arch arm: "-arm64"

  version "4.19.3"
  sha256 arm:   "7bc6ddac9f7f55b69b84fb3a859b4279ea1554051a6c2a961b2cf9311e947964",
         intel: "dc13fb1ace8d0cc9b121743ccd9fc41b505003c96a05a19ae9ec650a387d53b6"

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
