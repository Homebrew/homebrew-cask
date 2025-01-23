cask "openshift-client" do
  arch arm: "-arm64"

  version "4.17.14"
  sha256 arm:   "7535a185095bb4c51037ee5fa79ca0ece3f18bf077e3db35fab36e1ca3dca524",
         intel: "17b427635716e7954a88e410c51a3c2cb53c7a6e1c58aa3ff2b52a14d3dea53c"

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
